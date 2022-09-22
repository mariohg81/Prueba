library(readr)
disp <- read_csv("https://github.com/mariohg81/Prueba/disp.csv")
View(disp)

fig <- plot_ly(disp,name = 'gfem_front_base', x = ~gfem_front_base_x, y = ~gfem_front_base_y, z = ~gfem_front_base_z, type = 'scatter3d', mode = 'markers', opacity = 1, line = list(width = 6, reverscale = FALSE))
fig <- fig %>% add_trace(name = 'gfem_rear_base',x = ~gfem_rear_base_x, y = ~gfem_rear_base_y, z = ~gfem_rear_base_z, mode = 'markers', opacity = 1, line = list(width = 6, reverscale = FALSE))
fig <- fig %>% add_trace(name = 'gfem_front_deform',x = ~gfem_front_deform_x, y = ~gfem_front_deform_y, z = ~gfem_front_deform_z, mode = 'markers', opacity = 1, line = list(width = 6, reverscale = FALSE))
fig <- fig %>% add_trace(name = 'gfem_rear_deform',x = ~gfem_rear_deform_x, y = ~gfem_rear_deform_y, z = ~gfem_rear_deform_z, mode = 'markers', opacity = 1, line = list(width = 6, reverscale = FALSE))

fig <- fig %>% add_trace(name = 'dfem_front_base',x = ~dfem_front_base_x, y = ~dfem_front_base_y, z = ~dfem_front_base_z, mode = 'markers', opacity = 1, line = list(width = 6, reverscale = FALSE))
fig <- fig %>% add_trace(name = 'dfem_rear_base',x = ~dfem_rear_base_x, y = ~dfem_rear_base_y, z = ~dfem_rear_base_z, mode = 'markers', opacity = 1, line = list(width = 6, reverscale = FALSE))
fig <- fig %>% add_trace(name = 'dfem_front_deform',x = ~dfem_front_deform_x, y = ~dfem_front_deform_y, z = ~dfem_front_deform_z, mode = 'markers', opacity = 1, line = list(width = 6, reverscale = FALSE))
fig <- fig %>% add_trace(name = 'dfem_rear_deform',x = ~dfem_rear_deform_x, y = ~dfem_rear_deform_y, z = ~dfem_rear_deform_z, mode = 'markers', opacity = 1, line = list(width = 6, reverscale = FALSE))


fig

