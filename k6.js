import http from 'k6/http';
import { check } from 'k6';

export const options = {
    vus: 5,
    duration: '10s',
};

export default function () {
    const res = http.post('http://localhost:8080/sha/sha256', {
        string: "holaquetal",
        encoding: "base64"

    });
    check(res, { 'status was 200': (r) => r.status == 200 });
}