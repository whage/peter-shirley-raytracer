#ifndef HITABLEH
#define HITABLEH

#include "ray.h"
#include "material.h"

struct hit_record {
    float t;
    vec3 p;
    vec3 normal;
    material *mat_ptr;
};

class hitable {
public:
    virtual bool hit(const ray& r, float t_min, float t_max, hit_record& hit_rec) const = 0;
};

#endif
