// Place your key bindings in this file to override the defaultsauto[]
[
    // {
    //   "key": "Ctrl+u",
    //   "command": "",
    //   "when": "editorTextFocus"
    // },
    {
      "$special": "universalArgumentTypes"
    },
    // {
    //   "keys": ["right", "Ctrl+f"],
    //   "command": "",
    //   "whens": ["editorTextFocus", "terminalFocus"]
    // },
    // {
    //   "keys": ["right", "Ctrl+f"],
    //   "command": "",
    //   "when": "",
    //   "args": {
    //     "then": ""
    //   }
    // },
    // {
    //   "keys": ["left", "Ctrl+b"],
    //   "command": "",
    //   "whens": ["editorTextFocus", "terminalFocus"]
    // },
    // {
    //   "keys": ["left", "Ctrl+b"],
    //   "command": "",
    //   "when": "",
    //   "args": {
    //     "then": ""
    //   }
    // },
    // {
    //   "keys": ["up", "Ctrl+p"],
    //   "command": "",
    //   "whens": ["editorTextFocus && !suggestWidgetVisible", "terminalFocus"]
    // },
    {
      "keys": ["up", "Ctrl+p"],
      "command": "selectPrevSuggestion",
      "when": "suggestWidgetMultipleSuggestions && suggestWidgetVisible && textInputFocus"
    },
    {
      "keys": ["up", "Ctrl+p"],
      "command": "showPrevParameterHint",
      "when": "parameterHintsMultipleSignatures && parameterHintsVisible && textInputFocus"
    },
    // {
    //   "keys": ["up", "Ctrl+p"],
    //   "command": "",
    //   "when": "",
    //   "args": {
    //     "then": ""
    //   }
    // },
    // {
    //   "keys": ["down", "Ctrl+n"],
    //   "command": "",
    //   "whens": ["editorTextFocus", "terminalFocus"]
    // },
    {
      "keys": ["down", "Ctrl+n"],
      "command": "selectNextSuggestion",
      "when": "suggestWidgetMultipleSuggestions && suggestWidgetVisible && textInputFocus"
    },
    {
      "keys": ["down", "Ctrl+n"],
      "command": "showNextParameterHint",
      "when": "parameterHintsMultipleSignatures && parameterHintsVisible && textInputFocus"
    },
    // {
    //   "keys": ["down", "Ctrl+n"],
    //   "command": "",
    //   "when": "",
    //   "args": {
    //     "then": ""
    //   }
    // },
    // {
    //   "keys": ["home", "Ctrl+a"],
    //   "command": "",
    //   "whens": ["editorTextFocus", "terminalFocus"]
    // },
    // {
    //   "keys": ["home", "Ctrl+a"],
    //   "command": "",
    //   "when": "",
    //   "args": {
    //     "then": ""
    //   }
    // },
    // {
    //   "keys": ["end", "Ctrl+e"],
    //   "command": "",
    //   "whens": ["editorTextFocus", "terminalFocus"]
    // },
    // {
    //   "keys": ["end", "Ctrl+e"],
    //   "command": "",
    //   "when": "",
    //   "args": {
    //     "then": ""
    //   }
    // },
//    {
//      "key": "meta+f",
//      "command": "",
//      "when": "editorTextFocus"
//    },
//     {
//       "key": "meta+f",
//       "command": "",
//       "when": "",
//       "args": {
//         "then": ""
//       }
//     },
//     {
//       "key": "meta+b",
//       "command": "",
//       "when": "editorTextFocus"
//     },
//     {
//       "key": "meta+b",
//       "command": "",
//       "when": "",
//       "args": {
//         "then": ""
//       }
//     },
    // {
    //   "key": "meta+m",
    //   "command": "",
    //   "when": "editorTextFocus"
    // },
    // {
    //   "key": "meta+m",
    //   "command": "",
    //   "when": "",
    //   "args": {
    //     "then": ""
    //   }
    // },
    // {
    //   "keys": ["pagedown", "Ctrl+v"],
    //   "command": "",
    //   "when": "editorTextFocus && !suggestWidgetVisible"
    // },
    // {
    //   "keys": ["pagedown", "Ctrl+v"],
    //   "command": "",
    //   "when": "editorFocus && findWidgetVisible && !isComposing",
    //   "args": {
    //     "then": ""
    //   }
    // },
    // {
    //   "keys": ["pageup", "meta+v"],
    //   "command": "",
    //   "when": "editorTextFocus && !suggestWidgetVisible"
    // },
    // {
    //   "keys": ["pageup", "meta+v"],
    //   "command": "",
    //   "when": "editorFocus && findWidgetVisible && !isComposing",
    //   "args": {
    //     "then": ""
    //   }
    // },
    // {
    //   "key": "meta+shift+[",
    //   "command": "",
    //   "when": "editorTextFocus && !suggestWidgetVisible"
    // },
    // {
    //   "key": "meta+shift+]",
    //   "command": "",
    //   "when": "editorTextFocus && !suggestWidgetVisible"
    // },
    // {
    //   "key": "meta+shift+.",
    //   "command": "",
    //   "when": "editorTextFocus"
    // },
    // {
    //   "key": "meta+shift+.",
    //   "command": "",
    //   "when": "editorFocus && findWidgetVisible && !isComposing",
    //   "args": {
    //     "then":""
    //   }
    // },
    // {
    //   "key": "meta+shift+,",
    //   "command": "",
    //   "when": "editorTextFocus"
    // },
    // {
    //   "key": "meta+shift+,",
    //   "command": "",
    //   "when": "editorFocus && findWidgetVisible && !isComposing",
    //   "args": {
    //     "then": ""
    //   }
    // },
    {
      "keys": ["meta+g meta+g", "meta+g g"],
      "command": "workbench.action.gotoLine"
    },
    // {
    //   "keys": ["meta+g meta+g", "meta+g g"],
    //   "command": "",
    //   "when": "editorFocus && findWidgetVisible && !isComposing",
    //   "args": {
    //     "then": "workbench.action.gotoLine"
    //   }
    // },
    // {
    //   "key": "escape g",
    //   "command": "workbench.action.gotoLine",
    //   "when": ""
    // },
    {
      "keys": ["meta+g n", "meta+g meta+n"],
      "command": "editor.action.marker.next"
    },
    {
      "key": "Ctrl+x `",
      "command": "editor.action.marker.next",
      "when": "editorTextFocus"
    },
    {
      "keys": ["meta+g p", "meta+g meta+p"],
      "command": "editor.action.marker.prev"
    },
    // {
    //   "key": "Ctrl+l",
    //   "command": "",
    //   "when": "editorTextFocus"
    // },
//    {
//      "key": "Ctrl+s",
//      "command": "",
//      "when": "!findInputFocussed"
//    },
    {
      "key": "Ctrl+s",
      "command": "editor.action.nextMatchFindAction",
      "when": "findInputFocussed"
    },
    // {
    //   "key": "Ctrl+r",
    //   "command": "",
    //   "when": "!findInputFocussed"
    // },
    {
      "key": "Ctrl+r",
      "command": "editor.action.previousMatchFindAction",
      "when": "findInputFocussed"
    },
    {
      "key": "meta+shift+5",
      "command": "editor.action.startFindReplaceAction",
      "when": "editorFocus"
    },
    // {
    //   "keys": [
    //     "Ctrl+f",
    //     "Ctrl+b",
    //     "Ctrl+p",
    //     "Ctrl+n",
    //     "Ctrl+a",
    //     "Ctrl+e",
    //     "alt+f",
    //     "alt+b",
    //     "alt+m",
    //     "Ctrl+d",
    //     "Ctrl+h",
    //     "alt+d",
    //     "Ctrl+k",
    //     "Ctrl+w",
    //     "alt+w",
    //     "Ctrl+y",
    //     "alt+y",
    //     "Ctrl+m",
    //     "Ctrl+j",
    //     "alt+l",
    //     "alt+u",
    //     "alt+backspace"
    //   ],
    //   "whens": [
    //     "",
    //     ""
    //   ]
    // },
    // {
    //   "key": "Ctrl+meta+n",
    //   "command": "",
    //   "when": "editorFocus"
    // },
    // {
    //   "key": "Ctrl+meta+p",
    //   "command": "",
    //   "when": "editorFocus"
    // },
    // {
    //   "key": "Ctrl+d",
    //   "command": "",
    //   "when": "editorTextFocus && !editorReadonly"
    // },
    // {
    //   "key": "Ctrl+h",
    //   "command": "",
    //   "when": "editorTextFocus && !editorReadonly"
    // },
    // {
    //   "key": "meta+d",
    //   "command": "",
    //   "when": "editorTextFocus && !editorReadonly"
    // },
    // {
    //   "key": "meta+backspace",
    //   "command": "",
    //   "when": "editorTextFocus && !editorReadonly"
    // },
    // {
    //   "key": "Ctrl+k",
    //   "command": "",
    //   "when": "editorTextFocus && !editorReadonly"
    // },
    // {
    //   "key": "Ctrl+shift+backspace",
    //   "command": "",
    //   "when": "editorTextFocus"
    // },
    // {
    //   "key": "Ctrl+w",
    //   "command": "",
    //   "when": "editorTextFocus && !editorReadonly"
    // },
    // {
    //   "key": "Ctrl+w",
    //   "command": "",
    //   "when": "editorFocus && findWidgetVisible && !isComposing"
    // },
    // {
    //   "key": "meta+w",
    //   "command": "",
    //   "when": "editorTextFocus"
    // },
    // {
    //   "key": "meta+w",
    //   "command": "",
    //   "when": "editorFocus && findWidgetVisible && !isComposing"
    // },
    // {
    //   "key": "Ctrl+y",
    //   "command": "",
    //   "when": "editorTextFocus && !editorReadonly"
    // },
    // {
    //   "key": "Ctrl+y",
    //   "command": "",
    //   "when": "editorFocus && findWidgetVisible && !isComposing"
    // },
    // {
    //   "key": "meta+y",
    //   "command": "",
    //   "when": "editorTextFocus && !editorReadonly"
    // },
    // {
    //   "key": "meta+y",
    //   "command": "",
    //   "when": "editorFocus && findWidgetVisible && !isComposing"
    // },
    {
      "key": "Ctrl+o",
      "command": "lineBreakInsert",
      "when": "editorTextFocus && !editorReadonly"
    },
    // {
    //   "key": "Ctrl+o",
    //   "command": "",
    //   "when": "editorFocus && findWidgetVisible && !isComposing"
    // },
    // {
    //   "key": "Ctrl+m",
    //   "command": "",
    //   "when": "editorTextFocus && !editorReadonly"
    // },
    // {
    //   "key": "Ctrl+m",
    //   "command": "",
    //   "when": "editorFocus && findWidgetVisible && !isComposing"
    // },
    // {
    //   "key": "Ctrl+j",
    //   "command": "",
    //   "when": "editorTextFocus && !editorReadonly"
    // },
    // {
    //   "key": "Ctrl+j",
    //   "command": "",
    //   "when": "editorFocus && findWidgetVisible && !isComposing"
    // },
    // {
    //   "key": "Ctrl+x Ctrl+o",
    //   "command": "",
    //   "when": "editorTextFocus && !editorReadonly"
    // },
    // {
    //   "key": "Ctrl+x Ctrl+o",
    //   "command": "",
    //   "when": "editorFocus && findWidgetVisible && !isComposing",
    //   "args": {
    //     "then": ""
    //   }
    // },
    {
      "key": "Ctrl+x h",
      "command": "editor.action.selectAll",
      "when": "editorTextFocus"
    },
    // {
    //   "key": "Ctrl+x h",
    //   "command": "",
    //   "when": "editorFocus && findWidgetVisible && !isComposing",
    //   "args": {
    //     "then":"editor.action.selectAll"
    //   }
    // },
    {
      "keys": ["Ctrl+x u", "Ctrl+/", "Ctrl+shift+-"],
      "command": "undo",
      "when": "editorTextFocus && !editorReadonly"
    },
    // {
    //   "keys": ["Ctrl+x u", "Ctrl+/", "Ctrl+shift+-"],
    //   "command": "",
    //   "when": "editorFocus && findWidgetVisible && !isComposing",
    //   "args": {
    //     "then": "undo"
    //   }
    // },
    {
      "key": "Ctrl+;",
      "command": "editor.action.commentLine",
      "when": "editorTextFocus && !editorReadonly"
    },
    // {
    //   "key": "Ctrl+;",
    //   "command": "",
    //   "when": "editorFocus && findWidgetVisible && !isComposing",
    //   "args": {
    //     "then": "editor.action.commentLine"
    //   }
    // },
    {
      "key": "meta+;",
      "command": "editor.action.blockComment",
      "when": "editorTextFocus && !editorReadonly"
    },
    // {
    //   "key": "meta+;",
    //   "command": "",
    //   "when": "editorFocus && findWidgetVisible && !isComposing",
    //   "args": {
    //     "then": "editor.action.blockComment"
    //   }
    // },
    // {
    //   "key": "Ctrl+x Ctrl+l",
    //   "command": "",
    //   "when": "editorTextFocus && !editorReadonly"
    // },
    // {
    //   "key": "meta+l",
    //   "command": "",
    //   "when": "editorTextFocus && !editorReadonly"
    // },
    // {
    //   "key": "Ctrl+x Ctrl+u",
    //   "command": "",
    //   "when": "editorTextFocus && !editorReadonly"
    // },
    // {
    //   "key": "meta+u",
    //   "command": "",
    //   "when": "editorTextFocus && !editorReadonly"
    // },
    // {
    //   "key": "meta+c",
    //   "command": "",
    //   "when": "editorTextFocus && !editorReadonly"
    // },
    // {
    //   "key": "meta+shift+6",
    //   "command": "",
    //   "when": "editorTextFocus && !editorReadOnly",
    //   "args": [
    //     "",
    //     ""
    //   ]
    // },
    // {
    //   "key": "escape",
    //   "command": "",
    //   "when": ""
    // },
    // {
    //   "key": "escape",
    //   "command": "",
    //   "when": ""
    // },
    // {
    //   "key": "Ctrl+g",
    //   "command": "",
    //   "when": "editorTextFocus"
    // },
    {
      "key": "Ctrl+g",
      // "command": "emacs-mcx.cancel",
      "command": "",
      "when": "editorTextFocus"
    },
    // {
    //   "key": "Ctrl+g",
    //   "command": "",
    //   "when": "editorFocus && findWidgetVisible && !isComposing"
    // },
    {
      "key": "Ctrl+g",
      // "command": "emacs-mcx.isearchAbort",
      "command": "closeFindWidget",
      "when": "editorFocus && findWidgetVisible && !isComposing"
    },

    // {
    //   "key":  "enter",
    //   "command": "",
    //   "when": "editorFocus && findWidgetVisible && !replaceInputFocussed && !isComposing"
    // },
    {
      "key": "Ctrl+g",
      "command": "closeReferenceSearchEditor",
      "when": "inReferenceSearchEditor && !config.editor.stablePeek"
    },
    {
      "key": "Ctrl+g",
      "command": "closeReferenceSearch",
      "when": "referenceSearchVisible && !config.editor.stablePeek"
    },
    {
      "key": "Ctrl+g",
      "command": "closeBreakpointWidget",
      "when": "breakpointWidgetVisible && editorFocus"
    },
    {
      "key": "Ctrl+g",
      "command": "leaveSnippet",
      "when": "editorTextFocus && inSnippetMode"
    },
    {
      "key": "Ctrl+g",
      "command": "closeMarkersNavigation",
      "when": "editorFocus && markersNavigationVisible"
    },
    {
      "key": "Ctrl+g",
      "command": "closeParameterHints",
      "when": "editorTextFocus && parameterHintsVisible"
    },
    {
      "key": "Ctrl+g",
      "command": "hideSuggestWidget",
      "when": "editorTextFocus && suggestWidgetVisible"
    },
    {
      "key": "Ctrl+g",
      "command": "cancelRenameInput",
      "when": "editorFocus && renameInputVisible"
    },
    {
      "key": "Ctrl+g",
      "command": "closeAccessibilityHelp",
      "when": "accessibilityHelpWidgetVisible && editorFocus"
    },
    {
      "key": "Ctrl+g",
      "command": "closeReplaceInFilesWidget",
      "when": "replaceInputBoxFocus && searchViewletVisible"
    },
    {
      "key": "Ctrl+g",
      "command": "workbench.action.closeMessages",
      "when": "globalMessageVisible"
    },
    {
      "key": "Ctrl+g",
      "command": "workbench.action.closeQuickOpen",
      "when": "inQuickOpen"
    },
    // {
    //   "keys": ["Ctrl+space", "Ctrl+shift+2"],
    //   "command": "",
    //   "when": "editorTextFocus"
    // },
    // {
    //   "key": "escape space",
    //   "command": "",
    //   "when": ""
    // },
    // {
    //   "key": "Ctrl+x Ctrl+x",
    //   "command": "",
    //   "when": "editorTextFocus"
    // },
    // {
    //   "key": "Ctrl+x space",
    //   "command": "",
    //   "when": "editorTextFocus"
    // },
    // {
    //   "key": "Ctrl+x r",
    //   "command": "",
    //   "when": "editorTextFocus"
    // },
    // {
    //   "key": "k",
    //   "command": "",
    //   "when": ""
    // },
    // {
    //   "key": "y",
    //   "command": "",
    //   "when": ""
    // },
    // {
    //   "key": "d",
    //   "command": "",
    //   "when": ""
    // },
    // {
    //   "key": "meta+w",
    //   "command": "",
    //   "when": ""
    // },
    // {
    //   "key": "o",
    //   "command": "",
    //   "when": ""
    // },
    // {
    //   "key": "c",
    //   "command": "",
    //   "when": ""
    // },
    // {
    //   "key": "p",
    //   "command": "",
    //   "when": ""
    // },
    {
      "$special": "rectMarkModeTypes"
    },
    // {
    //   "key": "Ctrl+'",
    //   "command": "editor.action.triggerSuggest",
    //   "when": "editorTextFocus"
    // },
    {
      "key": "Ctrl+'",
      "command": "toggleSuggestionDetails",
      "when": "editorTextFocus && suggestWidgetVisible"
    },
    // {
    //   "key": "meta+/",
    //   "command": "editor.action.triggerSuggest",
    //   "when": "editorTextFocus"
    // },
    {
      "key": "meta+/",
      "command": "toggleSuggestionDetails",
      "when": "editorTextFocus && suggestWidgetVisible"
    },
    {
      "key": "meta+x",
      "command": "workbench.action.showCommands"
    },
    {
      "key": "Ctrl+meta+space",
      "command": "workbench.action.toggleSidebarVisibility"
    },
    {
      "key": "Ctrl+x Ctrl+c",
      "command": "workbench.action.closeWindow"
    },
    {
      "key": "Ctrl+x z",
      "command": "workbench.action.toggleZenMode",
      "when": "!terminalFocus"
    },
    {
      "key": "Ctrl+x Ctrl+f",
      "command": "workbench.action.quickOpen",
      "when": "!terminalFocus"
    },
    {
      "key": "Ctrl+x Ctrl+s",
      "command": "workbench.action.files.save",
      "when": "!terminalFocus"
    },
    {
      "key": "Ctrl+x Ctrl+w",
      "command": "workbench.action.files.saveAs",
      "when": "!terminalFocus"
    },
    {
      "key": "Ctrl+x s",
      "command": "workbench.action.files.saveAll",
      "when": "!terminalFocus"
    },
    {
      "key": "Ctrl+x Ctrl+n",
      "command": "workbench.action.newWindow",
      "when": "!terminalFocus"
    },
    {
      "key": "Ctrl+x b",
      "command": "workbench.action.showAllEditorsByMostRecentlyUsed",
      "when": "!terminalFocus"
    },
    {
      "key": "Ctrl+x k",
      "command": "workbench.action.closeActiveEditor",
      "when": "!terminalFocus"
    },
    {
      "key": "Ctrl+x Ctrl-k",
      "command": "workbench.action.closeAllEditors",
      "when": "!terminalFocus"
    },
    {
      "key": "Ctrl+x 0",
      "command": "workbench.action.closeEditorsInGroup",
      "when": "!terminalFocus"
    },
    {
      "key": "Ctrl+x 1",
      "command": "workbench.action.closeEditorsInOtherGroups",
      "when": "!terminalFocus"
    },
    {
      "key": "Ctrl+x 2",
      "command": "workbench.action.splitEditorDown",
      "when": "!terminalFocus"
    },
    {
      "key": "Ctrl+x 3",
      "command": "workbench.action.splitEditorRight",
      "when": "!terminalFocus"
    },
    {
      "key": "Ctrl+x 4",
      "command": "workbench.action.toggleEditorGroupLayout",
      "when": "!terminalFocus"
    },
    {
      "key": "Ctrl+x o",
      "command": "workbench.action.navigateEditorGroups",
      "when": "!terminalFocus"
    },
//    {
//      "key": "Ctrl+meta+f",
//      "command": "",
//      "when": "editorTextFocus"
//    },
    // {
    //   "key": "Ctrl+meta+b",
    //   "command": "",
    //   "when": "editorTextFocus"
    // },
    // {
    //   "key": "Ctrl+meta+k",
    //   "command": "",
    //   "when": "editorTextFocus"
    // },
    {
      "key": "Ctrl+p",
      "command": "selectPrevQuickFix",
      "when": "editorFocus && quickFixWidgetVisible"
    },
    {
      "key": "Ctrl+n",
      "command": "selectNextQuickFix",
      "when": "editorFocus && quickFixWidgetVisible"
    },
    {
      "key": "Ctrl+p",
      "command": "workbench.action.quickOpenSelectPrevious",
      "when": "inQuickOpen"
    },
    {
      "key": "Ctrl+n",
      "command": "workbench.action.quickOpenSelectNext",
      "when": "inQuickOpen"
    },
    {
      "key": "Ctrl+m",
      "command": "workbench.action.acceptSelectedQuickOpenItem",
      "when": "inQuickOpen"
    },
    {
      "key": "Ctrl+shift+'",
      "command": "editor.action.triggerParameterHints",
      "when": "editorTextFocus"
    },
    {
      "key": "Ctrl+x j",
      "command": "workbench.action.togglePanel",
      "when": "!terminalFocus"
    },
    // {
    //   "key": "Ctrl+i",
    //   "command": "",
    //   "args": [
    //     "",
    //     ""
    //   ]
    // }
    // JohnG: Compromise for having Emacs Ctrl-x key chord and Ctrl-x cut
    {
      "key": "Ctrl+x",
      "command": "editor.action.clipboardCutAction",
      "when": "editorTextFocus && editorHasSelection && !editorReadonly"
    },
    {
      "key": "ctrl+a",
      "command": "-extension.vim_ctrl+a",
      "when": "editorTextFocus && vim.active && vim.use<C-a> && !inDebugRepl"
    },
]


