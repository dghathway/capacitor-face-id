import { registerPlugin } from '@capacitor/core';

import type { FaceIdPlugin } from './definitions';

const FaceId = registerPlugin<FaceIdPlugin>('FaceId', {});

export * from './definitions';
export { FaceId };