declare namespace ToolPkg {
  interface Registry {
    registerAppLifecycleHook(definition: unknown): void;
    registerMessageProcessingPlugin(definition: unknown): void;
    registerToolLifecycleHook(definition: unknown): void;
  }
}

declare const ToolPkg: ToolPkg.Registry;
