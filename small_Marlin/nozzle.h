#ifndef __NOZZLE_H__
#define __NOZZLE_H__

#include "Marlin.h"
#include "point_t.h"

/**
 * @brief Nozzle class
 *
 * @todo: Do not ignore the end.z value and allow XYZ movements
 */
class Nozzle {
  private:

  #if ENABLED(NOZZLE_CLEAN_FEATURE)

    /**
     * @brief Stroke clean pattern
     * @details Wipes the nozzle back and forth in a linear movement
     *
     * @param start point_t defining the starting point
     * @param end point_t defining the ending point
     * @param strokes number of strokes to execute
     */
    static void stroke(const point_t &start, const point_t &end, const uint8_t &strokes) _Os;

    /**
     * @brief Zig-zag clean pattern
     * @details Apply a zig-zag cleaning pattern
     *
     * @param start point_t defining the starting point
     * @param end point_t defining the ending point
     * @param strokes number of strokes to execute
     * @param objects number of objects to create
     */
    static void zigzag(const point_t &start, const point_t &end, const uint8_t &strokes, const uint8_t &objects) _Os;

    /**
     * @brief Circular clean pattern
     * @details Apply a circular cleaning pattern
     *
     * @param start point_t defining the middle of circle
     * @param strokes number of strokes to execute
     * @param radius radius of circle
     */
    static void circle(const point_t &start, const point_t &middle, const uint8_t &strokes, const float &radius) _Os;

  #endif // NOZZLE_CLEAN_FEATURE

  public:

  #if ENABLED(NOZZLE_CLEAN_FEATURE)

    /**
     * @brief Clean the nozzle
     * @details Starts the selected clean procedure pattern
     *
     * @param pattern one of the available patterns
     * @param argument depends on the cleaning pattern
     */
    static void clean(const uint8_t &pattern, const uint8_t &strokes, const float &radius, const uint8_t &objects=0) _Os;

  #endif // NOZZLE_CLEAN_FEATURE

  #if ENABLED(NOZZLE_PARK_FEATURE)

    static void park(const uint8_t &z_action, const point_t &park=NOZZLE_PARK_POINT) _Os;

  #endif
};

#endif // __NOZZLE_H__
