interface DebugEvent<T = unknown> {
  action: string;
  data: T;
}

export const debugData = <P = unknown>(events: DebugEvent<P>[], timer = 1000): void => {
  for (const event of events) {
    if (import.meta.env.DEV) {
      setTimeout(() => {
        window.dispatchEvent(
          new MessageEvent('message', {
            data: {
              action: event.action,
              data: event.data,
            },
          }),
        );
      }, timer);
    }
  }
};