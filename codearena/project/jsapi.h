void function dWebCtrl::ExecuteScript(char* Script)
{
    BSTR bstrScript;
    BSTR bufferScript;
    static DWORD size=0;
    char nameInput[256]={'\0'};

    memset(nameInput,'\0',sizeof(nameInput)-1);

    wsprintf(nameInput,"javascript:%s",Script);

    size = MultiByteToWideChar(CP_ACP, 0, nameInput, -1, 0, 0);
    if (!(bufferScript =
         (wchar_t *)GlobalAlloc(GMEM_FIXED, sizeof(wchar_t)*size)))
        return;

    MultiByteToWideChar(CP_ACP, 0, nameInput, -1, bufferScript, size);
    bstrScript = SysAllocString(bufferScript);

    SysFreeString(bufferScript);

    pIwb->Navigate(bstrScript, &vEmpty, &vEmpty, &vEmpty, &vEmpty);
    SysFreeString(bstrScript);

    return;
}

///-//////////////////////////////////////////////////////////////
///         Windows Procedure
///-//////////////////////////////////////////////////////////////
LRESULT CALLBACK WindowProcedure (HWND hwnd, UINT message,
                                  WPARAM wParam, LPARAM lParam)
{

    switch (message)
    /* handle the messages */
    {
        case WM_COMMAND:
            switch LOWORD(wParam)
            {
                case IDM_COMMAND_ALERT:
                    // execute the function "message" with parameter
                    // "David is the best" within the page "daveware.html" called
                    // in our dWebCtrl
                    WebBrowser.ExecuteScript("javascript:message('David is the best');");
                    break;

                case IDM_FILE_EXIT:
                    SendMessage(hwnd,WM_DESTROY,(WPARAM)0,(LPARAM)0);
                    break;

            }

            break;

        case WM_CREATE:
        {
            GetCurrentDirectory(MAX_PATH-1,szDirectorioTrabajo);

            WebBrowser.Iniciar(hwnd,hInst);
            break;
        }

        case WM_SIZE:

            WebBrowser.OnResize(0,0);
            break;


        case WM_QUIT:
        case WM_DESTROY:
            /* send a WM_QUIT to the message queue */
            PostQuitMessage (0);
            break;


        default:   /* for messages that we don't deal with */
            return DefWindowProc (hwnd, message, wParam, lParam);
    }

    return 0;
}
