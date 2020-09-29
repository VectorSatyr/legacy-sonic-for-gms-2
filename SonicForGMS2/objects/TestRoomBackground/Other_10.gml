/// @description Position
water_height = 0;
with (Water)
{
    other.water_height = max(other.water_height, bbox_top);
}