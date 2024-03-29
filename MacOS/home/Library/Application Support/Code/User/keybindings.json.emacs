// Place your key bindings in this file to override the defaultsauto[]
[
    // {
    //   "key": "Cmd+u",
    //   "command": "",
    //   "when": "editorTextFocus"
    // },
    {
      "$special": "universalArgumentTypes"
    },
    // {
    //   "keys": ["right", "Cmd+f"],
    //   "command": "",
    //   "whens": ["editorTextFocus", "terminalFocus"]
    // },
    // {
    //   "keys": ["right", "Cmd+f"],
    //   "command": "",
    //   "when": "",
    //   "args": {
    //     "then": ""
    //   }
    // },
    // {
    //   "keys": ["left", "Cmd+b"],
    //   "command": "",
    //   "whens": ["editorTextFocus", "terminalFocus"]
    // },
    // {
    //   "keys": ["left", "Cmd+b"],
    //   "command": "",
    //   "when": "",
    //   "args": {
    //     "then": ""
    //   }
    // },
    // {
    //   "keys": ["up", "Cmd+p"],
    //   "command": "",
    //   "whens": ["editorTextFocus && !suggestWidgetVisible", "terminalFocus"]
    // },
    {
      "keys": ["up", "Cmd+p"],
      "command": "selectPrevSuggestion",
      "when": "suggestWidgetMultipleSuggestions && suggestWidgetVisible && textInputFocus"
    },
    {
      "keys": ["up", "Cmd+p"],
      "command": "showPrevParameterHint",
      "when": "parameterHintsMultipleSignatures && parameterHintsVisible && textInputFocus"
    },
    // {
    //   "keys": ["up", "Cmd+p"],
    //   "command": "",
    //   "when": "",
    //   "args": {
    //     "then": ""
    //   }
    // },
    // {
    //   "keys": ["down", "Cmd+n"],
    //   "command": "",
    //   "whens": ["editorTextFocus", "terminalFocus"]
    // },
    {
      "keys": ["down", "Cmd+n"],
      "command": "selectNextSuggestion",
      "when": "suggestWidgetMultipleSuggestions && suggestWidgetVisible && textInputFocus"
    },
    {
      "keys": ["down", "Cmd+n"],
      "command": "showNextParameterHint",
      "when": "parameterHintsMultipleSignatures && parameterHintsVisible && textInputFocus"
    },
    // {
    //   "keys": ["down", "Cmd+n"],
    //   "command": "",
    //   "when": "",
    //   "args": {
    //     "then": ""
    //   }
    // },
    // {
    //   "keys": ["home", "Cmd+a"],
    //   "command": "",
    //   "whens": ["editorTextFocus", "terminalFocus"]
    // },
    // {
    //   "keys": ["home", "Cmd+a"],
    //   "command": "",
    //   "when": "",
    //   "args": {
    //     "then": ""
    //   }
    // },
    // {
    //   "keys": ["end", "Cmd+e"],
    //   "command": "",
    //   "whens": ["editorTextFocus", "terminalFocus"]
    // },
    // {
    //   "keys": ["end", "Cmd+e"],
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
    //   "keys": ["pagedown", "Cmd+v"],
    //   "command": "",
    //   "when": "editorTextFocus && !suggestWidgetVisible"
    // },
    // {
    //   "keys": ["pagedown", "Cmd+v"],
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
      "key": "Cmd+x `",
      "command": "editor.action.marker.next",
      "when": "editorTextFocus"
    },
    {
      "keys": ["meta+g p", "meta+g meta+p"],
      "command": "editor.action.marker.prev"
    },
    // {
    //   "key": "Cmd+l",
    //   "command": "",
    //   "when": "editorTextFocus"
    // },
//    {
//      "key": "Cmd+s",
//      "command": "",
//      "when": "!findInputFocussed"
//    },
    {
      "key": "Cmd+s",
      "command": "editor.action.nextMatchFindAction",
      "when": "findInputFocussed"
    },
    // {
    //   "key": "Cmd+r",
    //   "command": "",
    //   "when": "!findInputFocussed"
    // },
    {
      "key": "Cmd+r",
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
    //     "Cmd+f",
    //     "Cmd+b",
    //     "Cmd+p",
    //     "Cmd+n",
    //     "Cmd+a",
    //     "Cmd+e",
    //     "alt+f",
    //     "alt+b",
    //     "alt+m",
    //     "Cmd+d",
    //     "Cmd+h",
    //     "alt+d",
    //     "Cmd+k",
    //     "Cmd+w",
    //     "alt+w",
    //     "Cmd+y",
    //     "alt+y",
    //     "Cmd+m",
    //     "Cmd+j",
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
    //   "key": "Cmd+meta+n",
    //   "command": "",
    //   "when": "editorFocus"
    // },
    // {
    //   "key": "Cmd+meta+p",
    //   "command": "",
    //   "when": "editorFocus"
    // },
    // {
    //   "key": "Cmd+d",
    //   "command": "",
    //   "when": "editorTextFocus && !editorReadonly"
    // },
    // {
    //   "key": "Cmd+h",
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
    //   "key": "Cmd+k",
    //   "command": "",
    //   "when": "editorTextFocus && !editorReadonly"
    // },
    // {
    //   "key": "Cmd+shift+backspace",
    //   "command": "",
    //   "when": "editorTextFocus"
    // },
    // {
    //   "key": "Cmd+w",
    //   "command": "",
    //   "when": "editorTextFocus && !editorReadonly"
    // },
    // {
    //   "key": "Cmd+w",
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
    //   "key": "Cmd+y",
    //   "command": "",
    //   "when": "editorTextFocus && !editorReadonly"
    // },
    // {
    //   "key": "Cmd+y",
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
      "key": "Cmd+o",
      "command": "lineBreakInsert",
      "when": "editorTextFocus && !editorReadonly"
    },
    // {
    //   "key": "Cmd+o",
    //   "command": "",
    //   "when": "editorFocus && findWidgetVisible && !isComposing"
    // },
    // {
    //   "key": "Cmd+m",
    //   "command": "",
    //   "when": "editorTextFocus && !editorReadonly"
    // },
    // {
    //   "key": "Cmd+m",
    //   "command": "",
    //   "when": "editorFocus && findWidgetVisible && !isComposing"
    // },
    // {
    //   "key": "Cmd+j",
    //   "command": "",
    //   "when": "editorTextFocus && !editorReadonly"
    // },
    // {
    //   "key": "Cmd+j",
    //   "command": "",
    //   "when": "editorFocus && findWidgetVisible && !isComposing"
    // },
    // {
    //   "key": "Cmd+x Cmd+o",
    //   "command": "",
    //   "when": "editorTextFocus && !editorReadonly"
    // },
    // {
    //   "key": "Cmd+x Cmd+o",
    //   "command": "",
    //   "when": "editorFocus && findWidgetVisible && !isComposing",
    //   "args": {
    //     "then": ""
    //   }
    // },
    {
      "key": "Cmd+x h",
      "command": "editor.action.selectAll",
      "when": "editorTextFocus"
    },
    // {
    //   "key": "Cmd+x h",
    //   "command": "",
    //   "when": "editorFocus && findWidgetVisible && !isComposing",
    //   "args": {
    //     "then":"editor.action.selectAll"
    //   }
    // },
    {
      "keys": ["Cmd+x u", "Cmd+/", "Cmd+shift+-"],
      "command": "undo",
      "when": "editorTextFocus && !editorReadonly"
    },
    // {
    //   "keys": ["Cmd+x u", "Cmd+/", "Cmd+shift+-"],
    //   "command": "",
    //   "when": "editorFocus && findWidgetVisible && !isComposing",
    //   "args": {
    //     "then": "undo"
    //   }
    // },
    {
      "key": "Cmd+;",
      "command": "editor.action.commentLine",
      "when": "editorTextFocus && !editorReadonly"
    },
    // {
    //   "key": "Cmd+;",
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
    //   "key": "Cmd+x Cmd+l",
    //   "command": "",
    //   "when": "editorTextFocus && !editorReadonly"
    // },
    // {
    //   "key": "meta+l",
    //   "command": "",
    //   "when": "editorTextFocus && !editorReadonly"
    // },
    // {
    //   "key": "Cmd+x Cmd+u",
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
    //   "key": "Cmd+g",
    //   "command": "",
    //   "when": "editorTextFocus"
    // },
    {
      "key": "Cmd+g",
      // "command": "emacs-mcx.cancel",
      "command": "",
      "when": "editorTextFocus"
    },
    // {
    //   "key": "Cmd+g",
    //   "command": "",
    //   "when": "editorFocus && findWidgetVisible && !isComposing"
    // },
    {
      "key": "Cmd+g",
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
      "key": "Cmd+g",
      "command": "closeReferenceSearchEditor",
      "when": "inReferenceSearchEditor && !config.editor.stablePeek"
    },
    {
      "key": "Cmd+g",
      "command": "closeReferenceSearch",
      "when": "referenceSearchVisible && !config.editor.stablePeek"
    },
    {
      "key": "Cmd+g",
      "command": "closeBreakpointWidget",
      "when": "breakpointWidgetVisible && editorFocus"
    },
    {
      "key": "Cmd+g",
      "command": "leaveSnippet",
      "when": "editorTextFocus && inSnippetMode"
    },
    {
      "key": "Cmd+g",
      "command": "closeMarkersNavigation",
      "when": "editorFocus && markersNavigationVisible"
    },
    {
      "key": "Cmd+g",
      "command": "closeParameterHints",
      "when": "editorTextFocus && parameterHintsVisible"
    },
    {
      "key": "Cmd+g",
      "command": "hideSuggestWidget",
      "when": "editorTextFocus && suggestWidgetVisible"
    },
    {
      "key": "Cmd+g",
      "command": "cancelRenameInput",
      "when": "editorFocus && renameInputVisible"
    },
    {
      "key": "Cmd+g",
      "command": "closeAccessibilityHelp",
      "when": "accessibilityHelpWidgetVisible && editorFocus"
    },
    {
      "key": "Cmd+g",
      "command": "closeReplaceInFilesWidget",
      "when": "replaceInputBoxFocus && searchViewletVisible"
    },
    {
      "key": "Cmd+g",
      "command": "workbench.action.closeMessages",
      "when": "globalMessageVisible"
    },
    {
      "key": "Cmd+g",
      "command": "workbench.action.closeQuickOpen",
      "when": "inQuickOpen"
    },
    // {
    //   "keys": ["Cmd+space", "Cmd+shift+2"],
    //   "command": "",
    //   "when": "editorTextFocus"
    // },
    // {
    //   "key": "escape space",
    //   "command": "",
    //   "when": ""
    // },
    // {
    //   "key": "Cmd+x Cmd+x",
    //   "command": "",
    //   "when": "editorTextFocus"
    // },
    // {
    //   "key": "Cmd+x space",
    //   "command": "",
    //   "when": "editorTextFocus"
    // },
    // {
    //   "key": "Cmd+x r",
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
    //   "key": "Cmd+'",
    //   "command": "editor.action.triggerSuggest",
    //   "when": "editorTextFocus"
    // },
    {
      "key": "Cmd+'",
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
      "key": "Cmd+meta+space",
      "command": "workbench.action.toggleSidebarVisibility"
    },
    {
      "key": "Cmd+x Cmd+c",
      "command": "workbench.action.closeWindow"
    },
    {
      "key": "Cmd+x z",
      "command": "workbench.action.toggleZenMode",
      "when": "!terminalFocus"
    },
    {
      "key": "Cmd+x Cmd+f",
      "command": "workbench.action.quickOpen",
      "when": "!terminalFocus"
    },
    {
      "key": "Cmd+x Cmd+s",
      "command": "workbench.action.files.save",
      "when": "!terminalFocus"
    },
    {
      "key": "Cmd+x Cmd+w",
      "command": "workbench.action.files.saveAs",
      "when": "!terminalFocus"
    },
    {
      "key": "Cmd+x s",
      "command": "workbench.action.files.saveAll",
      "when": "!terminalFocus"
    },
    {
      "key": "Cmd+x Cmd+n",
      "command": "workbench.action.newWindow",
      "when": "!terminalFocus"
    },
    {
      "key": "Cmd+x b",
      "command": "workbench.action.showAllEditorsByMostRecentlyUsed",
      "when": "!terminalFocus"
    },
    {
      "key": "Cmd+x k",
      "command": "workbench.action.closeActiveEditor",
      "when": "!terminalFocus"
    },
    {
      "key": "Cmd+x Cmd-k",
      "command": "workbench.action.closeAllEditors",
      "when": "!terminalFocus"
    },
    {
      "key": "Cmd+x 0",
      "command": "workbench.action.closeEditorsInGroup",
      "when": "!terminalFocus"
    },
    {
      "key": "Cmd+x 1",
      "command": "workbench.action.closeEditorsInOtherGroups",
      "when": "!terminalFocus"
    },
    {
      "key": "Cmd+x 2",
      "command": "workbench.action.splitEditorDown",
      "when": "!terminalFocus"
    },
    {
      "key": "Cmd+x 3",
      "command": "workbench.action.splitEditorRight",
      "when": "!terminalFocus"
    },
    {
      "key": "Cmd+x 4",
      "command": "workbench.action.toggleEditorGroupLayout",
      "when": "!terminalFocus"
    },
    {
      "key": "Cmd+x o",
      "command": "workbench.action.navigateEditorGroups",
      "when": "!terminalFocus"
    },
//    {
//      "key": "Cmd+meta+f",
//      "command": "",
//      "when": "editorTextFocus"
//    },
    // {
    //   "key": "Cmd+meta+b",
    //   "command": "",
    //   "when": "editorTextFocus"
    // },
    // {
    //   "key": "Cmd+meta+k",
    //   "command": "",
    //   "when": "editorTextFocus"
    // },
    {
      "key": "Cmd+p",
      "command": "selectPrevQuickFix",
      "when": "editorFocus && quickFixWidgetVisible"
    },
    {
      "key": "Cmd+n",
      "command": "selectNextQuickFix",
      "when": "editorFocus && quickFixWidgetVisible"
    },
    {
      "key": "Cmd+p",
      "command": "workbench.action.quickOpenSelectPrevious",
      "when": "inQuickOpen"
    },
    {
      "key": "Cmd+n",
      "command": "workbench.action.quickOpenSelectNext",
      "when": "inQuickOpen"
    },
    {
      "key": "Cmd+m",
      "command": "workbench.action.acceptSelectedQuickOpenItem",
      "when": "inQuickOpen"
    },
    {
      "key": "Cmd+shift+'",
      "command": "editor.action.triggerParameterHints",
      "when": "editorTextFocus"
    },
    {
      "key": "Cmd+x j",
      "command": "workbench.action.togglePanel",
      "when": "!terminalFocus"
    },
    // {
    //   "key": "Cmd+i",
    //   "command": "",
    //   "args": [
    //     "",
    //     ""
    //   ]
    // }
    // JohnG: Compromise for having Emacs Ctrl-x key chord and Ctrl-x cut
    {
      "key": "Cmd+x",
      "command": "editor.action.clipboardCutAction",
      "when": "editorTextFocus && editorHasSelection && !editorReadonly"
    },
]

