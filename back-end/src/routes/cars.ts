import { Router } from "express";
import * as cars
 from "../controllers/carController.ts"


const router = Router();


router.get("/", cars.retrieveAll);
router.get("/:id", cars.retrieveOne);
router.post("/", cars.create);
router.put("/:id", cars.update);
router.delete("/:id", cars.remove);


export default router;
